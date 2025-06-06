import { toTitleCase } from 'common/string';
import { useState } from 'react';

import { useBackend } from '../backend';
import { Box, Button, NumberInput, Section, Stack } from '../components';
import { Window } from '../layouts';

type Data = {
  materials: Material[]
}

type Material = {
  type: string
  name: string
  amount: number
}

export const OreBox = props => {
  const { act, data } = useBackend<Data>();
  const { materials } = data;

  materials.sort((a, b) => {
    if (a.name < b.name) { return -1; }
    if (a.name > b.name) { return 1; }
    return 0;
  });

  return (
    <Window width={600} height={265}>
      <Window.Content>
        <Section
          fill
          scrollable
          title='Ores'
          buttons={
            <Button
              content='Eject All Ores'
              onClick={() => act('ejectallores')}
            />
          }
        >
          <Stack direction='column'>
            <Stack.Item>
              <Section>
                <Stack vertical>
                  <Stack align='start'>
                    <Stack.Item basis='30%'>
                      <Box bold>Ore</Box>
                    </Stack.Item>
                    <Stack.Item basis='20%'>
                      <Section align='center'>
                        <Box bold>Amount</Box>
                      </Section>
                    </Stack.Item>
                  </Stack>
                  {materials.map(material => (
                    <OreRow
                      key={material.type}
                      material={material}
                      onRelease={(type, amount) =>
                        act('eject', {
                          type: type,
                          qty: amount,
                        })
                      }
                      onReleaseAll={type =>
                        act('ejectall', {
                          type: type,
                        })
                      }
                    />
                  ))}
                </Stack>
              </Section>
            </Stack.Item>
          </Stack>
        </Section>
      </Window.Content>
    </Window>
  );
};

const OreRow = props => {
  const { material, onRelease, onReleaseAll } = props;

  const [amount, setAmount] = useState(1);

  const amountAvailable = Math.floor(material.amount);
  return (
    <Stack.Item>
      <Stack align='center'>
        <Stack.Item basis='30%'>{toTitleCase(material.name)}</Stack.Item>
        <Stack.Item basis='20%'>
          <Section align='center'>
            <Box mr={0} color='label' inline>
              {amountAvailable}
            </Box>
          </Section>
        </Stack.Item>
        <Stack.Item basis='50%'>
          <NumberInput
            width='32px'
            step={1}
            stepPixelSize={5}
            minValue={1}
            maxValue={600}
            value={amount}
            onChange={value => setAmount(value)}
          />
          <Button
            content='Eject Amount'
            onClick={() => onRelease(material.type, amount)}
          />
          <Button
            content='Eject 120'
            onClick={() => onRelease(material.type, 120)}
          />
          <Button
            content='Eject All'
            onClick={() => onReleaseAll(material.type)}
          />
        </Stack.Item>
      </Stack>
    </Stack.Item>
  );
};